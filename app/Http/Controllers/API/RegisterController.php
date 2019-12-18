<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\API\MainController as MainController;
use App\User;
use Illuminate\Support\Facades\Auth;
use Validator;

class RegisterController extends MainController
{
     /**
     * Register api
     *
     * @return \Illuminate\Http\Response
     */
    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if($validator->fails()){
            return $this->sendError('Validation Error.', $validator->errors());       
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['token'] =  $user->createToken('RoomServices')->accessToken;
        $success['name'] =  $user->name;

        return $this->sendResponse($success, 'User register successfully.');
    }
}
