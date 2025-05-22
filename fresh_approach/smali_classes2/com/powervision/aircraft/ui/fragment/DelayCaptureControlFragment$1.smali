.class Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;
.super Ljava/lang/Object;
.source "DelayCaptureControlFragment.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog$OnDialogClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

.field final synthetic val$dialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;)V
    .locals 0

    .line 231
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    iput-object p2, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->val$dialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->val$dialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

    invoke-virtual {v0}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->dismiss()V

    return-void
.end method

.method public confirm(Z)V
    .locals 1

    .line 234
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;)Landroid/widget/TextView;

    move-result-object p1

    const-string v0, "\u666e\u901a"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment;)Landroid/widget/LinearLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 238
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/DelayCaptureControlFragment$1;->val$dialog:Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;

    invoke-virtual {p1}, Lcom/powervision/aircraft/ui/fragment/dialog/DelayedCustomDialog;->dismiss()V

    return-void
.end method
