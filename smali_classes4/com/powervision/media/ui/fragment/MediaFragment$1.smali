.class Lcom/powervision/media/ui/fragment/MediaFragment$1;
.super Ljava/lang/Object;
.source "MediaFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/fragment/MediaFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/MediaFragment;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/MediaFragment;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 5

    .line 89
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 93
    iget-object v1, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-static {v1}, Lcom/powervision/media/ui/fragment/MediaFragment;->access$000(Lcom/powervision/media/ui/fragment/MediaFragment;)Lcom/powervision/base/views/ScrollControlVP;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    .line 95
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-void

    .line 97
    :cond_1
    sget v2, Lcom/powervision/media/R$id;->tab_title:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    iget-object v3, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-virtual {v3}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    sget v4, Lcom/powervision/media/R$color;->white:I

    invoke-static {v3, v4}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    if-nez v0, :cond_2

    .line 99
    sget v0, Lcom/powervision/media/R$drawable;->media_tab_left_select_bg:I

    goto :goto_0

    :cond_2
    sget v0, Lcom/powervision/media/R$drawable;->media_tab_right_select_bg:I

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 100
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 102
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-virtual {v0}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getCustomView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 114
    :cond_1
    sget v1, Lcom/powervision/media/R$id;->tab_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 115
    iget-object v2, p0, Lcom/powervision/media/ui/fragment/MediaFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaFragment;

    invoke-virtual {v2}, Lcom/powervision/media/ui/fragment/MediaFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    sget v3, Lcom/powervision/media/R$color;->gray_color:I

    invoke-static {v2, v3}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 116
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/powervision/media/R$drawable;->media_tab_left_normal_bg:I

    goto :goto_0

    :cond_2
    sget v2, Lcom/powervision/media/R$drawable;->media_tab_right_normal_bg:I

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 118
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout$Tab;->setCustomView(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$Tab;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 120
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
