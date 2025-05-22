.class public Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;
.super Ljava/lang/Object;
.source "ShipMediaActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

.field private view11a0:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V
    .locals 1

    .line 25
    invoke-virtual {p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;Landroid/view/View;)V
    .locals 3

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    .line 33
    sget v0, Lcom/powervision/gcs/R$id;->tab_layout:I

    const-class v1, Lcom/google/android/material/tabs/TabLayout;

    const-string v2, "field \'tabLayout\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/tabs/TabLayout;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 34
    sget v0, Lcom/powervision/gcs/R$id;->toolbar:I

    const-class v1, Landroidx/appcompat/widget/Toolbar;

    const-string v2, "field \'toolbar\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 35
    sget v0, Lcom/powervision/gcs/R$id;->view_pager:I

    const-class v1, Landroidx/viewpager/widget/ViewPager;

    const-string v2, "field \'viewPager\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 36
    sget v0, Lcom/powervision/gcs/R$id;->milst_pb:I

    const-class v1, Landroid/widget/ProgressBar;

    const-string v2, "field \'milstPb\'"

    invoke-static {p2, v0, v2, v1}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->milstPb:Landroid/widget/ProgressBar;

    .line 37
    sget v0, Lcom/powervision/gcs/R$id;->tv_select:I

    const-string v1, "method \'tv_select\'"

    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->view11a0:Landroid/view/View;

    .line 39
    new-instance v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding$1;-><init>(Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->target:Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;

    .line 54
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 55
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->toolbar:Landroidx/appcompat/widget/Toolbar;

    .line 56
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 57
    iput-object v1, v0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity;->milstPb:Landroid/widget/ProgressBar;

    .line 59
    iget-object v0, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->view11a0:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iput-object v1, p0, Lcom/powervision/gcs/ui/aty/ship/ShipMediaActivity_ViewBinding;->view11a0:Landroid/view/View;

    return-void

    .line 51
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
