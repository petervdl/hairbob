.class public final enum Lcom/airbnb/android/models/arrivalAssistant/Transportation;
.super Ljava/lang/Enum;
.source "Transportation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/models/arrivalAssistant/Transportation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum CAR:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum OTHER:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum OTHER_LOCAL:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum PUBLIC_TRANSIT:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field public static final enum TAXI:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

.field private static mMappings:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/airbnb/android/models/arrivalAssistant/Transportation;",
            ">;"
        }
    .end annotation
.end field

.field private static mParamMappingsPrimary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/arrivalAssistant/Transportation;",
            ">;"
        }
    .end annotation
.end field

.field private static mParamMappingsSecondary:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/airbnb/android/models/arrivalAssistant/Transportation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mButtonId:I

.field private final mDisplayStringId:I

.field private mPrimaryTransport:Z

.field private mTransportationTypeParam:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .prologue
    .line 10
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "PLANE"

    const/4 v2, 0x0

    const v3, 0x7f0804c9

    const-string/jumbo v4, "flight"

    const v5, 0x7f0e001b

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 11
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "CAR"

    const/4 v2, 0x1

    const v3, 0x7f0804ca

    const-string/jumbo v4, "car"

    const v5, 0x7f0e0007

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->CAR:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 12
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "OTHER"

    const/4 v2, 0x2

    const v3, 0x7f0804cb

    const-string/jumbo v4, "other"

    const v5, 0x7f0e0017

    const/4 v6, 0x1

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->OTHER:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 13
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "TAXI"

    const/4 v2, 0x3

    const v3, 0x7f0804c6

    const-string/jumbo v4, "car"

    const v5, 0x7f0e0026

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->TAXI:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 14
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "PUBLIC_TRANSIT"

    const/4 v2, 0x4

    const v3, 0x7f0804c7

    const-string/jumbo v4, "transport"

    const v5, 0x7f0e001d

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PUBLIC_TRANSIT:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 15
    new-instance v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const-string/jumbo v1, "OTHER_LOCAL"

    const/4 v2, 0x5

    const v3, 0x7f0804c8

    const-string/jumbo v4, "other"

    const v5, 0x7f0e0017

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;-><init>(Ljava/lang/String;IILjava/lang/String;IZ)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->OTHER_LOCAL:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 8
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    const/4 v1, 0x0

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PLANE:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->CAR:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->OTHER:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->TAXI:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->PUBLIC_TRANSIT:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->OTHER_LOCAL:Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    aput-object v2, v0, v1

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->$VALUES:[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    .line 22
    new-instance v0, Landroid/util/SparseArray;

    invoke-static {}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->values()[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mMappings:Landroid/util/SparseArray;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsSecondary:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsPrimary:Ljava/util/Map;

    .line 27
    invoke-static {}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->values()[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v7

    .local v7, "arr$":[Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    array-length v9, v7

    .local v9, "len$":I
    const/4 v8, 0x0

    .local v8, "i$":I
    :goto_c1
    if-ge v8, v9, :cond_d1

    aget-object v10, v7, v8

    .line 28
    .local v10, "transportation":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mMappings:Landroid/util/SparseArray;

    invoke-virtual {v10}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getButtonId()I

    move-result v1

    invoke-virtual {v0, v1, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    add-int/lit8 v8, v8, 0x1

    goto :goto_c1

    .line 31
    .end local v10    # "transportation":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    :cond_d1
    invoke-static {}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->values()[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    move-result-object v7

    array-length v9, v7

    const/4 v8, 0x0

    :goto_d7
    if-ge v8, v9, :cond_f7

    aget-object v10, v7, v8

    .line 34
    .restart local v10    # "transportation":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    invoke-virtual {v10}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->isPrimaryTransport()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 35
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsPrimary:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    :goto_ea
    add-int/lit8 v8, v8, 0x1

    goto :goto_d7

    .line 37
    :cond_ed
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsSecondary:Ljava/util/Map;

    invoke-virtual {v10}, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->getTransportationTypeParam()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ea

    .line 40
    .end local v10    # "transportation":Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    :cond_f7
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;IZ)V
    .registers 7
    .param p3, "buttonId"    # I
    .param p4, "transportationTypeParam"    # Ljava/lang/String;
    .param p5, "displayStringId"    # I
    .param p6, "primaryTransport"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mButtonId:I

    .line 44
    iput-object p4, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mTransportationTypeParam:Ljava/lang/String;

    .line 45
    iput p5, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mDisplayStringId:I

    .line 46
    iput-boolean p6, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mPrimaryTransport:Z

    .line 47
    return-void
.end method

.method public static getTransportationFromButtonId(I)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "buttonId"    # I

    .prologue
    .line 66
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mMappings:Landroid/util/SparseArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object v0
.end method

.method public static getTransportationFromParam(Ljava/lang/String;Z)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 3
    .param p0, "param"    # Ljava/lang/String;
    .param p1, "isPrimary"    # Z

    .prologue
    .line 70
    if-eqz p1, :cond_b

    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsPrimary:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    :goto_a
    return-object v0

    :cond_b
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mParamMappingsSecondary:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 8
    const-class v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/models/arrivalAssistant/Transportation;
    .registers 1

    .prologue
    .line 8
    sget-object v0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->$VALUES:[Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    invoke-virtual {v0}, [Lcom/airbnb/android/models/arrivalAssistant/Transportation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/models/arrivalAssistant/Transportation;

    return-object v0
.end method


# virtual methods
.method public getButtonId()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mButtonId:I

    return v0
.end method

.method public getDisplayStringId()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mDisplayStringId:I

    return v0
.end method

.method public getTransportationTypeParam()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mTransportationTypeParam:Ljava/lang/String;

    return-object v0
.end method

.method public isPrimaryTransport()Z
    .registers 2

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/airbnb/android/models/arrivalAssistant/Transportation;->mPrimaryTransport:Z

    return v0
.end method
