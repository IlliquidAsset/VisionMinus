.class Lcom/powervision/home/ui/fragment/DvModeMainFragment$1;
.super Ljava/lang/Object;
.source "DvModeMainFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/home/ui/fragment/DvModeMainFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;


# direct methods
.method constructor <init>(Lcom/powervision/home/ui/fragment/DvModeMainFragment;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$1;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    .line 204
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/powervision/home/ui/fragment/DvModeMainFragment$1;->this$0:Lcom/powervision/home/ui/fragment/DvModeMainFragment;

    invoke-static {v0, p1}, Lcom/powervision/home/ui/fragment/DvModeMainFragment;->access$100(Lcom/powervision/home/ui/fragment/DvModeMainFragment;Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
