.class public final synthetic Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;

.field public final synthetic f$1:Ljava/io/File;


# direct methods
.method public synthetic constructor <init>(Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;->f$0:Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;

    iput-object p2, p0, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;->f$1:Ljava/io/File;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;->f$0:Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;

    iget-object v1, p0, Lcom/lewis/edit/widgets/-$$Lambda$MGPUImage$SaveTempTask$SBvi4TXL_DaVXmoDUdR_PDBPFwE;->f$1:Ljava/io/File;

    invoke-virtual {v0, v1}, Lcom/lewis/edit/widgets/MGPUImage$SaveTempTask;->lambda$saveImage$0$MGPUImage$SaveTempTask(Ljava/io/File;)V

    return-void
.end method
