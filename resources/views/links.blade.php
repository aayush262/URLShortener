@extends('layouts.app')


@section('content')



    <h3>Create your own link here: </h3>
    <a href="create">CreateLink</a>

    <h3>The links are listed below</h3>


    
    <ul class= "list-group">

        @foreach($links as $link)
        <li class="list-group-item">

           id: {{$link->id}}  <a href = "#">url: {{$link->url}} </a>    code: {{$link->code}} "<a href='{{$link->code}}'>shortlink</a>";
        
        </li>
        @endforeach

    </ul>

@stop