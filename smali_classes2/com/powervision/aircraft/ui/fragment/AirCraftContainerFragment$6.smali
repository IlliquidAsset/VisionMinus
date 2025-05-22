.class Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;
.super Ljava/lang/Object;
.source "AirCraftContainerFragment.java"

# interfaces
.implements Lcom/powervision/aircraft/ui/fragment/AirCraftLapseTrailCaptureFragment$OnSelectDataChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V
    .locals 0

    .line 264
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public countChange(I)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$700(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;I)V

    return-void
.end method

.method public getTrailData(Lcom/powervision/aircraft/lapse/data/LapseTrailData;D)V
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    iget-object p1, p1, Lcom/powervision/aircraft/lapse/data/LapseTrailData;->data:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$802(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;Ljava/util/List;)Ljava/util/List;

    .line 273
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1, p2, p3}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$902(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;D)D

    .line 274
    iget-object p1, p0, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment$6;->this$0:Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;

    invoke-static {p1}, Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;->access$1000(Lcom/powervision/aircraft/ui/fragment/AirCraftContainerFragment;)V

    return-void
.end method
