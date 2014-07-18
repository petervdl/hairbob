.class final enum Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;
.super Ljava/lang/Enum;
.source "SearchResultsAutoCompleteAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

.field public static final enum PoweredByGoogle:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

.field public static final enum SearchItem:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 19
    new-instance v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    const-string/jumbo v1, "PoweredByGoogle"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->PoweredByGoogle:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    .line 20
    new-instance v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    const-string/jumbo v1, "SearchItem"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->SearchItem:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    .line 18
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->PoweredByGoogle:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->SearchItem:Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->$VALUES:[Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/adapters/SearchResultsAutoCompleteAdapter$RowType;

    return-object v0
.end method
