<nav class="sidebar">
    <div class="sidebar-header">
        <a href="#" class="sidebar-brand">
            Real<span>State:admin</span>
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
            {{-- Property Type --}}

            @if(Auth::user()->can('type.menu'))
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#emails" role="button" aria-expanded="false"
                    aria-controls="emails">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Property Type</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="emails">
                    <ul class="nav sub-menu">
                        @if(Auth::user()->can('all.type'))
                        <li class="nav-item">
                            <a href="{{ route('all.type') }}" class="nav-link">All Type</a>
                        </li>
                        @endif
                        @if(Auth::user()->can('add.type'))
                        <li class="nav-item">
                            <a href="{{ route('add.type') }}" class="nav-link">Add Type</a>
                        </li>
                        @endif
                    </ul>
                </div>
            </li>
            @endif



            {{-- Amenitie --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#amenitie" role="button" aria-expanded="false"
                    aria-controls="amenitie">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Amenitie Type</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="amenitie">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.amenitie') }}" class="nav-link">All Amenitie</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.amenitie') }}" class="nav-link">Add Type</a>
                        </li>

                    </ul>
                </div>
            </li>




            {{-- state --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#state" role="button" aria-expanded="false"
                    aria-controls="state">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">all state</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="state">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.state') }}" class="nav-link">All State</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.state') }}" class="nav-link">Add State</a>
                        </li>

                    </ul>
                </div>
            </li>




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
                            <a href="{{ route('all.property') }}" class="nav-link">All Property</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.property') }}" class="nav-link">Add Property</a>
                        </li>

                    </ul>
                </div>
            </li>




            <li class="nav-item nav-category">User</li>
            {{-- User all function --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#function" role="button" aria-expanded="false"
                    aria-controls="function">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">User all function</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="function">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.agent') }}" class="nav-link">All Agent</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('admin.package.history') }}" class="nav-link">Package History</a>
                        </li>

                    </ul>
                </div>
            </li>



            {{-- Property Message --}}
            <li class="nav-item">
                <a href="{{ route('admin.property.message') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Property Message </span>
                </a>
            </li>



            {{-- testimonials --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#testimonials" role="button" aria-expanded="false"
                    aria-controls="testimonials">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title"> Testimonials Manage</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="testimonials">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.testimonials') }}" class="nav-link">All Testimonials</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.testimonials') }}" class="nav-link">Add Testimonials</a>
                        </li>

                    </ul>
                </div>
            </li>



            {{-- BlogCategory --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#BlogCategory" role="button" aria-expanded="false"
                    aria-controls="BlogCategory">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title"> Blog Category </span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="BlogCategory">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.blog.category') }}" class="nav-link">All Blog Category</a>
                        </li>


                    </ul>
                </div>
            </li>



            {{-- Post --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#post" role="button" aria-expanded="false"
                    aria-controls="post">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title"> Blog Post </span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="post">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.post') }}" class="nav-link">All Post</a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('all.blog.category') }}" class="nav-link">Add Post</a>
                        </li>
                    </ul>
                </div>
            </li>




            {{-- comment --}}
            <li class="nav-item">
                <a href="{{ route('admin.blog.comment') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Comment</span>
                </a>
            </li>



            {{-- SMTP Setting --}}
            <li class="nav-item">
                <a href="{{ route('smtp.setting') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">SMTP Setting </span>
                </a>
            </li>


            <li class="nav-item">
                <a href="{{ route('site.setting') }}" class="nav-link">
                    <i class="link-icon" data-feather="calendar"></i>
                    <span class="link-title">Site Setting </span>
                </a>
            </li>


            {{-- Role & Permission --}}
            <li class="nav-item nav-category">Role & Permission</li>

            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#Permission" role="button" aria-expanded="false"
                    aria-controls="Permission">
                    <i class="link-icon" data-feather="mail"></i>
                    <span class="link-title">Role & Permission</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="Permission">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.permission') }}" class="nav-link">All Permission</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('all.roles') }}" class="nav-link">All Role</a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('add.roles.permission') }}" class="nav-link"> Role in Permission</a>
                        </li>

                        <li class="nav-item">
                            <a href="{{ route('all.roles.permission') }}" class="nav-link">All Role in Permission </a>
                        </li>

                    </ul>
                </div>
            </li>


            {{-- admin --}}
            <li class="nav-item">
                <a class="nav-link" data-bs-toggle="collapse" href="#admin" role="button" aria-expanded="false"
                    aria-controls="admin">
                    <i class="link-icon" data-feather="anchor"></i>
                    <span class="link-title">Manage Admin User</span>
                    <i class="link-arrow" data-feather="chevron-down"></i>
                </a>
                <div class="collapse" id="admin">
                    <ul class="nav sub-menu">
                        <li class="nav-item">
                            <a href="{{ route('all.admin') }}" class="nav-link">All Admin</a>
                        </li>
                        <li class="nav-item">
                            <a href="{{ route('add.admin') }}" class="nav-link">Add Admin </a>
                        </li>
                    </ul>
                </div>
            </li>











        </ul>
    </div>
</nav>