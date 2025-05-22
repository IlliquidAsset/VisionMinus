.class final Lcom/univocity/parsers/annotations/helpers/MethodFilter$2;
.super Ljava/lang/Object;
.source "MethodFilter.java"

# interfaces
.implements Lcom/univocity/parsers/annotations/helpers/MethodFilter$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/univocity/parsers/annotations/helpers/MethodFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reject(Ljava/lang/reflect/Method;)Z
    .locals 1

    .line 43
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    array-length p1, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
