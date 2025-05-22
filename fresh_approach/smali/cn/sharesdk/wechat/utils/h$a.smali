.class public final Lcn/sharesdk/wechat/utils/h$a;
.super Lcn/sharesdk/wechat/utils/l;
.source "WXLaunchMiniProgram.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/sharesdk/wechat/utils/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcn/sharesdk/wechat/utils/l;-><init>()V

    const-string v0, ""

    .line 49
    iput-object v0, p0, Lcn/sharesdk/wechat/utils/h$a;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 50
    iput v0, p0, Lcn/sharesdk/wechat/utils/h$a;->c:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    const/16 v0, 0x13

    return v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 2

    .line 74
    invoke-super {p0, p1}, Lcn/sharesdk/wechat/utils/l;->a(Landroid/os/Bundle;)V

    .line 75
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/h$a;->a:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_username"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/h$a;->b:Ljava/lang/String;

    const-string v1, "_launch_wxminiprogram_path"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget v0, p0, Lcn/sharesdk/wechat/utils/h$a;->c:I

    const-string v1, "_launch_wxminiprogram_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public final a(Z)Z
    .locals 3

    .line 62
    iget-object p1, p0, Lcn/sharesdk/wechat/utils/h$a;->a:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/sharesdk/wechat/utils/h$a;->a:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v1, 0x2800

    if-le p1, v1, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    iget p1, p0, Lcn/sharesdk/wechat/utils/h$a;->c:I

    const/4 v1, 0x1

    if-ltz p1, :cond_2

    const/4 v2, 0x2

    if-le p1, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    .line 66
    :cond_2
    :goto_0
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "miniprogram type should between MINIPTOGRAM_TYPE_RELEASE and MINIPROGRAM_TYPE_PREVIEW"

    aput-object v2, v1, v0

    const-string v2, "checkArgs fail"

    invoke-virtual {p1, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0

    .line 63
    :cond_3
    :goto_1
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcom/mob/tools/log/NLog;

    move-result-object p1

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "checkArgs fail, userName is invalid"

    invoke-virtual {p1, v2, v1}, Lcom/mob/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    return v0
.end method
