@extends('agent.agent_dashboard')
@section('agent')

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<div class="page-content">


    <div class="row profile-body">
        <!-- left wrapper start -->

        <!-- left wrapper end -->
        <!-- middle wrapper start -->
        <div class="col-md-12 col-xl-12 middle-wrapper">
            <div class="card">
                <div class="card-body">

                    <h6 class="card-title">Agent live chat</h6>

                    <div id="app">
                        <chat-message></chat-message>
                    </div>

                </div>
            </div>
        </div>
        <!-- middle wrapper end -->
        <!-- right wrapper start -->
        <div class="d-none d-xl-block col-xl-3">

        </div>
        <!-- right wrapper end -->
    </div>

</div>




@endsection