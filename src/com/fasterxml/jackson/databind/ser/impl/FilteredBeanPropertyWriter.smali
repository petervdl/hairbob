.class public abstract Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter;
.super Ljava/lang/Object;
.source "FilteredBeanPropertyWriter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;,
        Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;
    }
.end annotation


# direct methods
.method public static constructViewBased(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .registers 4
    .param p0, "base"    # Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;",
            "[",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;"
        }
    .end annotation

    .prologue
    .line 17
    .local p1, "viewsToIncludeIn":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 18
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;

    const/4 v1, 0x0

    aget-object v1, p1, v1

    invoke-direct {v0, p0, v1}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$SingleView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;Ljava/lang/Class;)V

    .line 20
    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;

    invoke-direct {v0, p0, p1}, Lcom/fasterxml/jackson/databind/ser/impl/FilteredBeanPropertyWriter$MultiView;-><init>(Lcom/fasterxml/jackson/databind/ser/BeanPropertyWriter;[Ljava/lang/Class;)V

    goto :goto_c
.end method
