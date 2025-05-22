.class Lcom/powervision/base/utils/AppUtils$1;
.super Ljava/lang/Object;
.source "AppUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/utils/AppUtils;->jumpToGooglePlay(Landroid/app/Activity;Landroid/content/DialogInterface$OnDismissListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/AppUtils;

.field final synthetic val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/AppUtils;Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/powervision/base/utils/AppUtils$1;->this$0:Lcom/powervision/base/utils/AppUtils;

    iput-object p2, p0, Lcom/powervision/base/utils/AppUtils$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "lzqDDD"

    const-string v0, "ErrorDialog dismiss"

    .line 201
    invoke-static {p1, v0}, Lcom/powervision/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcom/powervision/base/utils/AppUtils$1;->val$onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 203
    invoke-interface {p1, v0}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    return-void
.end method
