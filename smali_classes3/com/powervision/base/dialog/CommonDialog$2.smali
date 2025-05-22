.class Lcom/powervision/base/dialog/CommonDialog$2;
.super Ljava/lang/Object;
.source "CommonDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/dialog/CommonDialog;->initEvent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/dialog/CommonDialog;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/powervision/base/dialog/CommonDialog$2;->this$0:Lcom/powervision/base/dialog/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 91
    iget-object p1, p0, Lcom/powervision/base/dialog/CommonDialog$2;->this$0:Lcom/powervision/base/dialog/CommonDialog;

    iget-object p1, p1, Lcom/powervision/base/dialog/CommonDialog;->onClickBottomListener:Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/powervision/base/dialog/CommonDialog$2;->this$0:Lcom/powervision/base/dialog/CommonDialog;

    iget-object p1, p1, Lcom/powervision/base/dialog/CommonDialog;->onClickBottomListener:Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;

    invoke-interface {p1}, Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;->onNegativeClick()V

    :cond_0
    return-void
.end method
