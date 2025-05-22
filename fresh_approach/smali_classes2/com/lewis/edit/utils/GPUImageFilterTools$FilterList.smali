.class public Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;
.super Ljava/lang/Object;
.source "GPUImageFilterTools.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lewis/edit/utils/GPUImageFilterTools;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FilterList"
.end annotation


# instance fields
.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;",
            ">;"
        }
    .end annotation
.end field

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    .line 335
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Lcom/lewis/edit/utils/GPUImageFilterTools$FilterType;)V
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->names:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 339
    iget-object p1, p0, Lcom/lewis/edit/utils/GPUImageFilterTools$FilterList;->filters:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
