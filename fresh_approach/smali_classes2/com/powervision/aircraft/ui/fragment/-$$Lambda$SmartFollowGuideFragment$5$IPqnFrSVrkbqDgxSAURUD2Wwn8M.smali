.class public final synthetic Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;

    iput p2, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;->f$0:Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;

    iget v1, p0, Lcom/powervision/aircraft/ui/fragment/-$$Lambda$SmartFollowGuideFragment$5$IPqnFrSVrkbqDgxSAURUD2Wwn8M;->f$1:I

    invoke-virtual {v0, v1}, Lcom/powervision/aircraft/ui/fragment/SmartFollowGuideFragment$5;->lambda$onSetGetIntParamDate$0$SmartFollowGuideFragment$5(I)V

    return-void
.end method
