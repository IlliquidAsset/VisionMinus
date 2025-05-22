.class Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;
.super Ljava/lang/Object;
.source "GridGroupedsSimpleAdapterWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupedData"
.end annotation


# instance fields
.field private mCount:I

.field private mRefPosition:I

.field final synthetic this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;


# direct methods
.method public constructor <init>(Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;I)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->this$0:Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput p2, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mRefPosition:I

    const/4 p1, 0x0

    .line 118
    iput p1, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mCount:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 122
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mCount:I

    return v0
.end method

.method public getRefPosition()I
    .locals 1

    .line 126
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mRefPosition:I

    return v0
.end method

.method public incrementCount()V
    .locals 1

    .line 130
    iget v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/powervision/media/widgets/gridviewgroup/GridGroupedsSimpleAdapterWrapper$GroupedData;->mCount:I

    return-void
.end method
