<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <div class="tab-content">
        
        <!--作业单-->
        <div class="tab-pane fade in active" id="tab-homework">
            
            <div class="card card-module">
                <div class="card-main">
                    <h2 class="content-sub-heading">待提交作业</h2>
                    <hr>
                    <div id="cid-homework-doing">

                    </div>
                </div>
            </div>
            
            <div class="card card-module" >
                <div class="card-main">
                    <h2 class="content-sub-heading">已提交作业</h2>
                    <hr>
                    <div id="cid-homework-done">
                        
                    </div>
                </div>
            </div>
            

            <div class="history-divider">神奇历史的分割线,以下作业只能查看不能提交↖(^ω^)↗</div>

            <div class="card card-module" >
                <div class="card-main">
                    <h2 class="content-sub-heading text-indianred">历史作业</h2>
                    <hr>
                    <div id="cid-homework-miss">

                    </div>
                </div>
            </div>
            <a id="anchor-heditor" href="#tab-homework-editor" data-toggle="tab" class="hidden"></a>
            
            

        </div>
        
        <!--作业编辑器-->
        <div class="tab-pane fade" id="tab-homework-editor">
            <div class="card" style="margin: -1em -2em;box-shadow: none;">
                <div class="card-main">
                    <div class="card-action ">
                        <div class="card-action-btn btn btn-flat pull-left homework-name">作业</div>
                        
                        <a class="btn-submit btn btn-flat pull-right" id="submit-homework">
                            <span><span class="icon avatar avatar-sm">cloud_upload</span></span>
                        </a>
                        <a class="btn-upload btn btn-flat pull-right" id="uploadify-btn" href="#modal-uploadify" data-toggle="modal">
                            <span><span class="icon avatar avatar-sm">attachment</span></span>
                        </a>
                        <a class="btn-edit btn btn-flat pull-right" id="editor-backspace">
                            <span><span class="icon avatar avatar-sm">keyboard_backspace</span></span>
                        </a>
                        <a class="btn-edit btn btn-flat pull-right" data-toggle="tab" href="#tab-homework" hidden ></a>
                    </div>
                    
                    <div class="card-inner">
                        <div class="divider-t"></div>
                        <title class="btn btn-flat text-blod text-indianred">作业要求</title>
                        <p class="homework-info" id="homework-info">...</p>

                    </div>

                    <div class="card-inner collapsible-region"> 
                        <div id="lms-editor"></div>
                    </div>

                </div>
            </div>

        </div>
    </div>
        
