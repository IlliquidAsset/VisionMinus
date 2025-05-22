.class Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;
.super Lcom/powervision/base/base/BaseHandleReference;
.source "WelcomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/newvisionplus/WelcomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WelcomeHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/powervision/base/base/BaseHandleReference<",
        "Lcom/powervision/newvisionplus/WelcomeActivity;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/powervision/newvisionplus/WelcomeActivity;)V
    .locals 0

    .line 108
    invoke-direct {p0, p1}, Lcom/powervision/base/base/BaseHandleReference;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public referenceHandleMessage(Lcom/powervision/newvisionplus/WelcomeActivity;Landroid/os/Message;)V
    .locals 10

    .line 113
    iget v0, p2, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "welcomeTest"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string p2, " case FINISH "

    .line 121
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->finish()V

    goto/16 :goto_1

    .line 145
    :pswitch_1
    invoke-static {}, Lcom/powervision/base/utils/SPHelperUtils;->getInstance()Lcom/powervision/base/utils/SPHelperUtils;

    move-result-object p2

    invoke-virtual {p2}, Lcom/powervision/base/utils/SPHelperUtils;->getScreenAdvImgUrl()Ljava/lang/String;

    move-result-object p2

    .line 146
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleMessage1: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v6, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v6}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==44444444444=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 149
    invoke-static {}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$100()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/orhanobut/logger/Logger;->t(Ljava/lang/String;)Lcom/orhanobut/logger/Printer;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5}, Lcom/orhanobut/logger/Printer;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==55555555555=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ".mp4"

    .line 151
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v4, 0x8

    if-eqz v0, :cond_2

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "==66666666666=="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/powervision/newvisionplus/WelcomeActivity;->fileIsExists(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v5, 0x1f4

    const/16 v7, 0x67

    const/16 v8, 0x65

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/powervision/base/utils/MD5Utils;->encode(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$300(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==888888888888=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$400(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/media/widgets/LVideoView;

    move-result-object p2

    invoke-virtual {p2, v2}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 157
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$500(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 158
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$400(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/media/widgets/LVideoView;

    move-result-object p2

    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/powervision/media/widgets/LVideoView;->startPlay(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 160
    :cond_0
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$200(Lcom/powervision/newvisionplus/WelcomeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/powervision/gcs/utils/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 161
    invoke-static {p1, p2}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$600(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)V

    .line 162
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    .line 163
    invoke-static {p1, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$802(Lcom/powervision/newvisionplus/WelcomeActivity;Z)Z

    .line 164
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p2

    invoke-virtual {p2, v7, v5, v6}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 167
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==999999999=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-static {p1, p2}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$600(Lcom/powervision/newvisionplus/WelcomeActivity;Ljava/lang/String;)V

    .line 169
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p2

    invoke-virtual {p2, v8}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessage(I)Z

    .line 170
    invoke-static {p1, v1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$802(Lcom/powervision/newvisionplus/WelcomeActivity;Z)Z

    .line 171
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$700(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;

    move-result-object p2

    invoke-virtual {p2, v7, v5, v6}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 174
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==777777777777=="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$400(Lcom/powervision/newvisionplus/WelcomeActivity;)Lcom/powervision/media/widgets/LVideoView;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/powervision/media/widgets/LVideoView;->setVisibility(I)V

    .line 176
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$500(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const-string v0, " glide \u52a0\u8f7d\u56fe\u72471 "

    .line 177
    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-static {p1}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 179
    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    .line 180
    invoke-virtual {p2}, Lcom/bumptech/glide/RequestBuilder;->centerCrop()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    .line 181
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->diskCacheStrategy(Lcom/bumptech/glide/load/engine/DiskCacheStrategy;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    sget-object v0, Lcom/bumptech/glide/Priority;->IMMEDIATE:Lcom/bumptech/glide/Priority;

    .line 182
    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->priority(Lcom/bumptech/glide/Priority;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/RequestBuilder;

    .line 183
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$500(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 187
    :cond_3
    :goto_0
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$900(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/FrameLayout;

    move-result-object p2

    invoke-virtual {p2, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 188
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$800(Lcom/powervision/newvisionplus/WelcomeActivity;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 191
    :cond_4
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$1000(Lcom/powervision/newvisionplus/WelcomeActivity;)V

    goto :goto_1

    :pswitch_2
    const-string p2, " case GOTONEXTMSG "

    .line 126
    invoke-static {v3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-static {}, Lcom/alibaba/android/arouter/launcher/ARouter;->getInstance()Lcom/alibaba/android/arouter/launcher/ARouter;
    move-result-object p1
    const-string p2, "/home/homeActivity"
    invoke-virtual {p1, p2}, Lcom/alibaba/android/arouter/launcher/ARouter;->build(Ljava/lang/String;)Lcom/alibaba/android/arouter/facade/Postcard;
    move-result-object p1
    invoke-virtual {p1}, Lcom/alibaba/android/arouter/facade/Postcard;->navigation()Ljava/lang/Object;
    goto :goto_1

    .line 115
    :pswitch_3
    iget-object p2, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$000(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 117
    invoke-static {p1}, Lcom/powervision/newvisionplus/WelcomeActivity;->access$000(Lcom/powervision/newvisionplus/WelcomeActivity;)Landroid/widget/TextView;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const v4, 0x7f120789

    invoke-virtual {p1, v4}, Lcom/powervision/newvisionplus/WelcomeActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v2

    .line 117
    invoke-static {v3, p1, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic referenceHandleMessage(Ljava/lang/Object;Landroid/os/Message;)V
    .locals 0

    .line 105
    check-cast p1, Lcom/powervision/newvisionplus/WelcomeActivity;

    invoke-virtual {p0, p1, p2}, Lcom/powervision/newvisionplus/WelcomeActivity$WelcomeHandler;->referenceHandleMessage(Lcom/powervision/newvisionplus/WelcomeActivity;Landroid/os/Message;)V

    return-void
.end method
