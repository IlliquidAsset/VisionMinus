.class Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;
.super Lcom/powervision/base/views/widget/WheelView$WheelAdapter;
.source "AirLapseFreeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/aircraft/ui/views/AirLapseFreeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LengthAdapter"
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

    .line 399
    invoke-direct {p0}, Lcom/powervision/base/views/widget/WheelView$WheelAdapter;-><init>()V

    .line 400
    invoke-static {p1}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 403
    :cond_0
    iput-object p1, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    return-void
.end method

.method static synthetic access$600(Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;)Ljava/util/List;
    .locals 0

    .line 395
    iget-object p0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 407
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    invoke-static {v0}, Lcom/powervision/base/utils/StringUtils;->isListValid(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 408
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method protected getItem(I)Ljava/lang/String;
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getItemCount()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/powervision/aircraft/ui/views/AirLapseFreeView$LengthAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
