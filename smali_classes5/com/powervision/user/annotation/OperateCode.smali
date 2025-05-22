.class public interface abstract annotation Lcom/powervision/user/annotation/OperateCode;
.super Ljava/lang/Object;
.source "OperateCode.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation


# static fields
.field public static final BIND:I = 0xc8

.field public static final CHANGE_INFO:I = 0x190

.field public static final GET_CODE:I = 0x64

.field public static final UPLOAD:I = 0x12c
