.class Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$2;
.super Ljava/lang/Object;
.source "SmartFollowGuideFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;->onSetParmasResultFailed(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;


# direct methods
.method constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;)V
    .locals 0

    .line 222
    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$2;->this$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 225
    sget v0, Lcom/powervision/aircraft/R$string;->AP03_Msg_162:I

    invoke-static {v0}, Lcom/powervision/base/utils/ToastUtils;->showDefaultToast(I)V

    return-void
.end method
