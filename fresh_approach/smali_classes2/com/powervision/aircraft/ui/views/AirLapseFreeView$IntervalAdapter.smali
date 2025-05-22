.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;
.super Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.source "AirLapseFreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IntervalAdapter"
.end annotation


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;-><init>()V

    .line 378
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 381
    :cond_0
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method protected getItem(I)Ljava/lang/String;
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    .line 386
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$IntervalAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
