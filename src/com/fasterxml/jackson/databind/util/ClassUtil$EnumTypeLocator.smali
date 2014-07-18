.class Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fasterxml/jackson/databind/util/ClassUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnumTypeLocator"
.end annotation


# static fields
.field static final instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;


# instance fields
.field private final enumMapTypeField:Ljava/lang/reflect/Field;

.field private final enumSetTypeField:Ljava/lang/reflect/Field;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 620
    new-instance v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    invoke-direct {v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->instance:Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;

    return-void
.end method

.method private constructor <init>()V
    .registers 4

    .prologue
    .line 625
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 629
    const-class v0, Ljava/util/EnumSet;

    const-string/jumbo v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    .line 630
    const-class v0, Ljava/util/EnumMap;

    const-string/jumbo v1, "elementType"

    const-class v2, Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    .line 631
    return-void
.end method

.method private get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .registers 5
    .param p1, "bean"    # Ljava/lang/Object;
    .param p2, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 654
    :try_start_0
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v1

    return-object v1

    .line 655
    :catch_5
    move-exception v0

    .line 656
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static locateField(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 10
    .param p1, "expectedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 662
    .local p0, "fromClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 664
    .local v3, "found":Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 665
    .local v2, "fields":[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/reflect/Field;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_8
    if-ge v4, v5, :cond_1d

    aget-object v1, v0, v4

    .line 666
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p2, :cond_30

    .line 667
    move-object v3, v1

    .line 672
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_1d
    if-nez v3, :cond_37

    .line 673
    move-object v0, v2

    array-length v5, v0

    const/4 v4, 0x0

    :goto_22
    if-ge v4, v5, :cond_37

    aget-object v1, v0, v4

    .line 674
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    if-ne v6, p2, :cond_34

    .line 676
    if-eqz v3, :cond_33

    const/4 v6, 0x0

    .line 686
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :goto_2f
    return-object v6

    .line 665
    .restart local v1    # "f":Ljava/lang/reflect/Field;
    :cond_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    .line 677
    :cond_33
    move-object v3, v1

    .line 673
    :cond_34
    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    .line 681
    .end local v1    # "f":Ljava/lang/reflect/Field;
    :cond_37
    if-eqz v3, :cond_3d

    .line 683
    const/4 v6, 0x1

    :try_start_3a
    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3d} :catch_3f

    :cond_3d
    :goto_3d
    move-object v6, v3

    .line 686
    goto :goto_2f

    .line 684
    :catch_3f
    move-exception v6

    goto :goto_3d
.end method


# virtual methods
.method public enumTypeFor(Ljava/util/EnumMap;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumMap",
            "<**>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 645
    .local p1, "set":Ljava/util/EnumMap;, "Ljava/util/EnumMap<**>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 646
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumMapTypeField:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 648
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not figure out type for EnumMap (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public enumTypeFor(Ljava/util/EnumSet;)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet",
            "<*>;)",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/Enum",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 636
    .local p1, "set":Ljava/util/EnumSet;, "Ljava/util/EnumSet<*>;"
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_d

    .line 637
    iget-object v0, p0, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->enumSetTypeField:Ljava/lang/reflect/Field;

    invoke-direct {p0, p1, v0}, Lcom/fasterxml/jackson/databind/util/ClassUtil$EnumTypeLocator;->get(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0

    .line 639
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "Can not figure out type for EnumSet (odd JDK platform?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
