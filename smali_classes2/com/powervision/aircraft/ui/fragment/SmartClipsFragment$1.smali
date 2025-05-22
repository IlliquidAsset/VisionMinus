.class Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$1;
.super Ljava/util/TimerTask;
.source "SmartClipsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->initData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 371
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;->access$100(Lcom/powervision/aircraft/ui/fragment/SmartClipsFragment;)Lcom/powervision/aircraft/smart/SmartClipsManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/smart/SmartClipsManager;->setROIParamer(I)V

    return-void
.end method
