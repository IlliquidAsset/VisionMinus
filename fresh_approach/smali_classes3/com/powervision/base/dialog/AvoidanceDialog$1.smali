.class Lcom/powervision/base/dialog/AvoidanceDialog$1;
.super Ljava/lang/Object;
.source "AvoidanceDialog.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/base/dialog/AvoidanceDialog;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/dialog/AvoidanceDialog;


# direct methods
.method constructor <init>(Lcom/powervision/base/dialog/AvoidanceDialog;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog$1;->this$0:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 82
    iget-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog$1;->this$0:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->access$000(Lcom/powervision/base/dialog/AvoidanceDialog;)Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/powervision/base/dialog/AvoidanceDialog$1;->this$0:Lcom/powervision/base/dialog/AvoidanceDialog;

    invoke-static {p1}, Lcom/powervision/base/dialog/AvoidanceDialog;->access$000(Lcom/powervision/base/dialog/AvoidanceDialog;)Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/powervision/base/dialog/AvoidanceDialog$ISelectListener;->open(Z)V

    :cond_0
    return-void
.end method
