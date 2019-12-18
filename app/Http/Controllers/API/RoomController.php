<?php

namespace App\Http\Controllers\API;

use App\Room;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Http\Resources\RoomResource;

class RoomController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $rooms = Room::all();
        return RoomResource::collection($rooms);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $room = Room::where('id', $id)->get();
        return RoomResource::collection($room);
    }
    public function typeRoom($type)
    {
        if( $type == "အားလုံး" ){
            $rooms = Room::all();
        }else{
            $rooms = Room::where('room_type', $type)->get();
        }
        return RoomResource::collection($rooms);
    }

    public function selectRoom($room_type, $township, $price, $user_type)
    {
        if($room_type == 'အဆောင်'){

            if ($township == 'အားလုံး') {

                if ($price == 'အားလုံး') {

                    if ($user_type == 'အားလုံး') {

                        $select_rooms = Room::where('room_type', $room_type)->get();
                        return RoomResource::collection($select_rooms);
                    }else{

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('user_type', $user_type)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }
                }else{

                    if ($user_type == 'အားလုံး') {

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('price', $price)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }else{

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('price', $price)
                        ->where('user_type', $user_type)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }
                }

            }else{

                if ($price == 'အားလုံး') {

                    if ($user_type == 'အားလုံး') {

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('township_id', $township)
                        ->get();
                        return RoomResource::collection($select_rooms);
                    }else{

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('township_id', $township)
                        ->where('user_type', $user_type)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }
                }else{

                    if ($user_type == 'အားလုံး') {

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('township_id', $township)
                        ->where('price', $price)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }else{

                        $select_rooms = Room::where('room_type', $room_type)
                        ->where('township_id', $township)
                        ->where('price', $price)
                        ->where('user_type', $user_type)
                        ->get();
                        return RoomResource::collection($select_rooms);

                    }
                }
            }

        }else{

            if ($township == 'အားလုံး') {

                if ($price == 'အားလုံး') {

                    $select_rooms = Room::where('room_type', $room_type)->get();
                    return RoomResource::collection($select_rooms);

                }else{

                    $select_rooms = Room::where('room_type', $room_type)
                    ->where('price', $price)
                    ->get();
                    return RoomResource::collection($select_rooms);

                }
            }else{

                if ($price == 'အားလုံး') {

                    $select_rooms = Room::where('room_type', $room_type)
                    ->where('township_id', $township)
                    ->get();
                    return RoomResource::collection($select_rooms);

                }else{

                    $select_rooms = Room::where('room_type', $room_type)
                    ->where('township_id', $township)
                    ->where('price', $price)
                    ->get();
                    return RoomResource::collection($select_rooms);

                }

            }

        }
        
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
