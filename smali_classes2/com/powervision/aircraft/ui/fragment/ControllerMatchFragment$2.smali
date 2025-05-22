.class Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$2;
.super Ljava/lang/Object;
.source "ControllerMatchFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Ljava/lang/String;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/ControllerMatchFragment;Z)V

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  fragment.. pair .. afterTextChanged   s ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ControllerMatchFragment"

    invoke-static {v0, p1}, Lcom/powervision/base/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

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
