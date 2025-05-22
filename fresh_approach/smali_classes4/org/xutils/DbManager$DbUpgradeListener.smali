.class public interface abstract Lorg/xutils/DbManager$DbUpgradeListener;
.super Ljava/lang/Object;
.source "DbManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/xutils/DbManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DbUpgradeListener"
.end annotation


# virtual methods
.method public abstract onUpgrade(Lorg/xutils/DbManager;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xutils/ex/DbException;
        }
    .end annotation
.end method
