.class public abstract Lcn/sharesdk/wechat/utils/l;
.super Ljava/lang/Object;
.source "WechatReq.java"


# instance fields
.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()I
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcn/sharesdk/wechat/utils/l;->a()I

    move-result v0

    const-string v1, "_wxapi_command_type"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    iget-object v0, p0, Lcn/sharesdk/wechat/utils/l;->d:Ljava/lang/String;

    const-string v1, "_wxapi_basereq_transaction"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Z)Z
.end method
