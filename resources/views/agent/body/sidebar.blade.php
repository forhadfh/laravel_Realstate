@php
$id = Auth::user()->id;
$agentId = App\Models\User::find($id);
$status = $agentId->status;
@endphp




<nav class="sidebar">
    <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
            Real<span>State:agent</span>
        </a>
        <div class="sidebar-toggler not-active">
            <span></span>
            <span></span>
            <span></span>
        </div>
    </div>
    <div class="sidebar-body">
        <ul class="nav">
            <li class="nav-item nav-category">Main</li>
            <li class="nav-item">
                <a href="{{route('admin.dashboard')}}" class="nav-link">
                    <i class="link-icon" data-feather="box"></i>
                    <span class="link-title">Dashboard</span>
                </a>
            </li>

            <li class="nav-item nav-category">RealEstate</li>

            @if ($status === 'active')

            {{-- Property --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#property" role="button" aria-expanded="false"
                    aria-controls="property">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Property </span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="property">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('agent.all.property') }}" class="nav-link">All Property</a>
                        </li>


                    </ul>
                </div>
            </li>


            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#Package" role="button" aria-expanded="false"
                    aria-controls="Package">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Bye Package </span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="Package">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('buy.package') }}" class="nav-link">All Package</a>
                        </li>
                    </ul>

                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('package.history') }}" class="nav-link">Package History</a>
                        </li>
                    </ul>


                </div>
            </li>

            <li class="nav-item">
                <a href="{{ route('agent.property.message') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Property Message </span>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('agent.schedule.request') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Schedule Request </span>
                </a>
            </li>

            <li class="nav-item">
                <a href="{{ route('agent.live.chat') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Live Chat</span>
                </a>
            </li>




            @else

            @endif


        </ul>
    </div>
</nav>