.class public interface abstract annotation Lcom/powervision/base/net/annotation/CodeException;
.super Ljava/lang/Object;
.source "CodeException.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final HTTP_ERROR:I = 0x102

.field public static final JSON_ERROR:I = 0x103

.field public static final NETWORK_ERROR:I = 0x101

.field public static final RUNTIME_ERROR:I = 0x105

.field public static final UNKNOWN_ERROR:I = 0x104

.field public static final UNKNOWN_HOST_ERROR:I = 0x106
