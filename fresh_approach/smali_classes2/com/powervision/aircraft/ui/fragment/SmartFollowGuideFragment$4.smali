.class Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;
.super Ljava/lang/Object;
.source "SmartFollowGuideFragment.java"

# interfaces
.implements Lcom/powervision/base/dialog/CommonDialog$OnClickBottomListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->showCloseDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

.field final synthetic val$dialog:Lcom/powervision/base/dialog/CommonDialog;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;Lcom/powervision/base/dialog/CommonDialog;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;->val$dialog:Lcom/powervision/base/dialog/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegativeClick()V
    .locals 0

    return-void
.end method

.method public onPositiveClick()V
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;->val$dialog:Lcom/powervision/base/dialog/CommonDialog;

    invoke-virtual {v0}, Lcom/powervision/base/dialog/CommonDialog;->dismiss()V

    .line 317
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$4;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->access$300(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V

    return-void
.end method
