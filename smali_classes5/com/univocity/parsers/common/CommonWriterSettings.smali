.class public abstract Lcom/univocity/parsers/common/CommonWriterSettings;
.super Lcom/univocity/parsers/common/CommonSettings;
.source "CommonWriterSettings.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<F:",
        "Lcom/univocity/parsers/common/Format;",
        ">",
        "Lcom/univocity/parsers/common/CommonSettings<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private columnReorderingEnabled:Z

.field private emptyValue:Ljava/lang/String;

.field private expandIncompleteRows:Z

.field private headerWritingEnabled:Ljava/lang/Boolean;

.field private rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/univocity/parsers/common/CommonSettings;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    const-string v0, ""

    .line 46
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->emptyValue:Ljava/lang/String;

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->expandIncompleteRows:Z

    .line 50
    iput-boolean v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->columnReorderingEnabled:Z

    return-void
.end method


# virtual methods
.method protected addConfiguration(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->addConfiguration(Ljava/util/Map;)V

    .line 151
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->emptyValue:Ljava/lang/String;

    const-string v1, "Empty value"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    const-string v1, "Header writing enabled"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    if-nez v0, :cond_0

    const-string v0, "none"

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const-string v1, "Row processor"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected clearInputSpecificSettings()V
    .locals 1

    .line 206
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->clearInputSpecificSettings()V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    return-void
.end method

.method protected bridge synthetic clone()Lcom/univocity/parsers/common/CommonSettings;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic clone(Z)Lcom/univocity/parsers/common/CommonSettings;
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object p1

    return-object p1
.end method

.method protected clone()Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/univocity/parsers/common/CommonSettings;->clone()Lcom/univocity/parsers/common/CommonSettings;

    move-result-object v0

    check-cast v0, Lcom/univocity/parsers/common/CommonWriterSettings;

    return-object v0
.end method

.method protected clone(Z)Lcom/univocity/parsers/common/CommonWriterSettings;
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/univocity/parsers/common/CommonSettings;->clone(Z)Lcom/univocity/parsers/common/CommonSettings;

    move-result-object p1

    check-cast p1, Lcom/univocity/parsers/common/CommonWriterSettings;

    return-object p1
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 40
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->clone()Lcom/univocity/parsers/common/CommonWriterSettings;

    move-result-object v0

    return-object v0
.end method

.method protected configureFromAnnotations(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 170
    invoke-virtual {p0, p1}, Lcom/univocity/parsers/common/CommonWriterSettings;->deriveHeadersFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 173
    :cond_0
    invoke-static {p1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->findHeadersAnnotation(Ljava/lang/Class;)Lcom/univocity/parsers/annotations/Headers;

    move-result-object v0

    .line 175
    sget-object v1, Lcom/univocity/parsers/annotations/helpers/MethodFilter;->ONLY_GETTERS:Lcom/univocity/parsers/annotations/helpers/MethodFilter;

    invoke-static {p1, v1}, Lcom/univocity/parsers/annotations/helpers/AnnotationHelper;->deriveHeaderNamesFromFields(Ljava/lang/Class;Lcom/univocity/parsers/annotations/helpers/MethodFilter;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 179
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->sequence()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lez v2, :cond_1

    .line 180
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->sequence()[Ljava/lang/String;

    move-result-object v1

    .line 182
    :cond_1
    invoke-interface {v0}, Lcom/univocity/parsers/annotations/Headers;->write()Z

    move-result v2

    .line 185
    :cond_2
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_3

    .line 186
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    .line 189
    :cond_3
    invoke-virtual {p0}, Lcom/univocity/parsers/common/CommonWriterSettings;->getHeaders()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    array-length v0, v1

    if-lez v0, :cond_4

    .line 190
    invoke-virtual {p0, p1, v1}, Lcom/univocity/parsers/common/CommonWriterSettings;->setHeadersDerivedFromClass(Ljava/lang/Class;[Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method public getEmptyValue()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->emptyValue:Ljava/lang/String;

    return-object v0
.end method

.method public final getExpandIncompleteRows()Z
    .locals 1

    .line 132
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->expandIncompleteRows:Z

    return v0
.end method

.method public getRowWriterProcessor()Lcom/univocity/parsers/common/processor/RowWriterProcessor;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    return-object v0
.end method

.method public isColumnReorderingEnabled()Z
    .locals 1

    .line 218
    iget-boolean v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->columnReorderingEnabled:Z

    return v0
.end method

.method public final isHeaderWritingEnabled()Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_0
    return v0
.end method

.method final runAutomaticConfiguration()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    instance-of v1, v0, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;

    if-eqz v1, :cond_0

    .line 159
    check-cast v0, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;

    invoke-virtual {v0}, Lcom/univocity/parsers/common/processor/BeanWriterProcessor;->getBeanClass()Ljava/lang/Class;

    move-result-object v0

    .line 160
    invoke-virtual {p0, v0}, Lcom/univocity/parsers/common/CommonWriterSettings;->configureFromAnnotations(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method public setColumnReorderingEnabled(Z)V
    .locals 0

    .line 229
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->columnReorderingEnabled:Z

    return-void
.end method

.method public setEmptyValue(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->emptyValue:Ljava/lang/String;

    return-void
.end method

.method public final setExpandIncompleteRows(Z)V
    .locals 0

    .line 145
    iput-boolean p1, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->expandIncompleteRows:Z

    return-void
.end method

.method public final setHeaderWritingEnabled(Z)V
    .locals 0

    .line 119
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->headerWritingEnabled:Ljava/lang/Boolean;

    return-void
.end method

.method public setRowWriterProcessor(Lcom/univocity/parsers/common/processor/RowWriterProcessor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/univocity/parsers/common/processor/RowWriterProcessor<",
            "*>;)V"
        }
    .end annotation

    .line 95
    iput-object p1, p0, Lcom/univocity/parsers/common/CommonWriterSettings;->rowWriterProcessor:Lcom/univocity/parsers/common/processor/RowWriterProcessor;

    return-void
.end method
