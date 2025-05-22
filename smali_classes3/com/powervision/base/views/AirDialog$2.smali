.class Lcom/powervision/base/views/AirDialog$2;
.super Ljava/lang/Object;
.source "AirDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/views/AirDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/views/AirDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/views/AirDialog;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/powervision/base/views/AirDialog$2;->this$0:Lcom/powervision/base/views/AirDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 46
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog$2;->this$0:Lcom/powervision/base/views/AirDialog;

    invoke-static {p1}, Lcom/powervision/base/views/AirDialog;->access$000(Lcom/powervision/base/views/AirDialog;)Lcom/powervision/base/views/AirDialog$DialogClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/powervision/base/views/AirDialog$2;->this$0:Lcom/powervision/base/views/AirDialog;

    invoke-static {p1}, Lcom/powervision/base/views/AirDialog;->access$000(Lcom/powervision/base/views/AirDialog;)Lcom/powervision/base/views/AirDialog$DialogClickListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/powervision/base/views/AirDialog$DialogClickListener;->onConfirm()V

    :cond_0
    return-void
.end method
