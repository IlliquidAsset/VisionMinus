.class Lcom/powervision/base/utils/AudioUtil$2;
.super Ljava/lang/Object;
.source "AudioUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/AudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/powervision/base/utils/AudioUtil;


# direct methods
.method constructor <init>(Lcom/powervision/base/utils/AudioUtil;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/powervision/base/utils/AudioUtil$2;->this$0:Lcom/powervision/base/utils/AudioUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/powervision/base/utils/AudioUtil$2;->this$0:Lcom/powervision/base/utils/AudioUtil;

    invoke-virtual {v0}, Lcom/powervision/base/utils/AudioUtil;->getTheSound()V

    return-void
.end method
