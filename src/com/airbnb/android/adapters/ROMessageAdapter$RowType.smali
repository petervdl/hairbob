.class final enum Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;
.super Ljava/lang/Enum;
.source "ROMessageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/ROMessageAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

.field public static final enum OTHER:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

.field public static final enum SELF:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;


# instance fields
.field private final mLayoutId:I


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 45
    new-instance v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    const-string/jumbo v1, "SELF"

    const v2, 0x7f03015d

    invoke-direct {v0, v1, v3, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->SELF:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    .line 46
    new-instance v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    const-string/jumbo v1, "OTHER"

    const v2, 0x7f03015c

    invoke-direct {v0, v1, v4, v2}, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->OTHER:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    .line 44
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->SELF:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->OTHER:Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "layoutId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 50
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 51
    iput p3, p0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->mLayoutId:I

    .line 52
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 44
    const-class v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;
    .registers 1

    .prologue
    .line 44
    sget-object v0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;

    return-object v0
.end method


# virtual methods
.method public getLayoutId()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/airbnb/android/adapters/ROMessageAdapter$RowType;->mLayoutId:I

    return v0
.end method
