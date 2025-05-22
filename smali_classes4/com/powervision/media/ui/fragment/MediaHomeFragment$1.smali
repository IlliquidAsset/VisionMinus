.class Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;
.super Ljava/lang/Object;
.source "MediaHomeFragment.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/media/ui/fragment/MediaHomeFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;


# direct methods
.method constructor <init>(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {v0}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$000(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Lcom/powervision/base/views/ScrollControlVP;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/powervision/base/views/ScrollControlVP;->setCurrentItem(I)V

    .line 133
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$Tab;->getPosition()I

    move-result p1

    if-nez p1, :cond_0

    .line 134
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$100(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object p1, p0, Lcom/powervision/media/ui/fragment/MediaHomeFragment$1;->this$0:Lcom/powervision/media/ui/fragment/MediaHomeFragment;

    invoke-static {p1}, Lcom/powervision/media/ui/fragment/MediaHomeFragment;->access$100(Lcom/powervision/media/ui/fragment/MediaHomeFragment;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0

    return-void
.end method
