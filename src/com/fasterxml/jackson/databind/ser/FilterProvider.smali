.class public abstract Lcom/fasterxml/jackson/databind/ser/FilterProvider;
.super Ljava/lang/Object;
.source "FilterProvider.java"


# virtual methods
.method public abstract findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public findPropertyFilter(Ljava/lang/Object;Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;
    .registers 5
    .param p1, "filterId"    # Ljava/lang/Object;
    .param p2, "valueToFilter"    # Ljava/lang/Object;

    .prologue
    .line 52
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/databind/ser/FilterProvider;->findFilter(Ljava/lang/Object;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;

    move-result-object v0

    .line 53
    .local v0, "old":Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;
    if-nez v0, :cond_8

    .line 54
    const/4 v1, 0x0

    .line 56
    :goto_7
    return-object v1

    :cond_8
    invoke-static {v0}, Lcom/fasterxml/jackson/databind/ser/impl/SimpleBeanPropertyFilter;->from(Lcom/fasterxml/jackson/databind/ser/BeanPropertyFilter;)Lcom/fasterxml/jackson/databind/ser/PropertyFilter;

    move-result-object v1

    goto :goto_7
.end method
