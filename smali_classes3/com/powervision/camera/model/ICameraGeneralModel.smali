.class public interface abstract Lcom/powervision/camera/model/ICameraGeneralModel;
.super Ljava/lang/Object;
.source "ICameraGeneralModel.java"

# interfaces
.implements Lcom/powervision/base/base/BaseModel;


# virtual methods
.method public abstract getCameraGeneralData(Landroidx/fragment/app/FragmentActivity;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentActivity;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/chad/library/adapter/base/entity/MultiItemEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getGridImageResId(I)I
.end method

.method public abstract getLineData()Lcom/github/mikephil/charting/data/LineData;
.end method

.method public abstract getLineData([I)Lcom/github/mikephil/charting/data/LineData;
.end method
