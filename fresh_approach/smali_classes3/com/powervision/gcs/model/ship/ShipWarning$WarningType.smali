.class public interface abstract annotation Lcom/powervision/gcs/model/ship/ShipWarning$WarningType;
.super Ljava/lang/Object;
.source "ShipWarning.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/powervision/gcs/model/ship/ShipWarning;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "WarningType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_AUTO:I = 0x2

.field public static final TYPE_MANUAL:I = 0x1

.field public static final TYPE_TITLE:I = 0x3
