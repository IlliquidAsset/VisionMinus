.class Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;
.super Ljava/lang/Object;
.source "SyncFlightLogFragment.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->initListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;


# direct methods
.method constructor <init>(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 1

    .line 82
    sget p1, Lcn/powervision/flightlog/R$id;->sub_sync_half_year:I

    if-ne p2, p1, :cond_0

    .line 83
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    const/4 p2, 0x2

    invoke-static {p1, p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$002(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;I)I

    .line 84
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$100(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 85
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$200(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_check_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 86
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$300(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 87
    :cond_0
    sget p1, Lcn/powervision/flightlog/R$id;->sub_sync_all:I

    if-ne p2, p1, :cond_1

    .line 88
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$002(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;I)I

    .line 89
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$100(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$200(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$300(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_check_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 93
    :cond_1
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$002(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;I)I

    .line 94
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$100(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_check_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 95
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$200(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-static {p1}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->access$300(Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;)Landroid/widget/RadioButton;

    move-result-object p1

    iget-object p2, p0, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment$1;->this$0:Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;

    invoke-virtual {p2}, Lcn/powervision/flightlog/fragments/SyncFlightLogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/powervision/flightlog/R$drawable;->log_uncheck_button_bg:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/RadioButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
