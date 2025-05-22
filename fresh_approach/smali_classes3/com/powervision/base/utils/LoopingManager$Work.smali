.class Lcom/powervision/base/utils/LoopingManager$Work;
.super Ljava/lang/Object;
.source "LoopingManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/base/utils/LoopingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Work"
.end annotation


# instance fields
.field delayTime:J

.field id:Ljava/lang/String;

.field runnable:Ljava/lang/Runnable;

.field time:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;JLjava/lang/String;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 161
    iput-wide v0, p0, Lcom/powervision/base/utils/LoopingManager$Work;->time:J

    .line 165
    iput-object p1, p0, Lcom/powervision/base/utils/LoopingManager$Work;->runnable:Ljava/lang/Runnable;

    .line 166
    iput-wide p2, p0, Lcom/powervision/base/utils/LoopingManager$Work;->delayTime:J

    .line 167
    iput-object p4, p0, Lcom/powervision/base/utils/LoopingManager$Work;->id:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getTime()J
    .locals 2

    .line 154
    iget-wide v0, p0, Lcom/powervision/base/utils/LoopingManager$Work;->time:J

    return-wide v0
.end method

.method public setTime(J)V
    .locals 0

    .line 158
    iput-wide p1, p0, Lcom/powervision/base/utils/LoopingManager$Work;->time:J

    return-void
.end method
