.class Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$1;
.super Ljava/lang/Object;
.source "SmartFunctionMenuFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->onStartRecordVideo(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment$1;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;

    invoke-static {v0}, Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;->access$000(Lcom/powervision/aircraft/ui/fragment/SmartFunctionMenuFragment;)Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/adapter/SmartFollowMenuAdapter;->setIsRecording(Z)V

    return-void
.end method
