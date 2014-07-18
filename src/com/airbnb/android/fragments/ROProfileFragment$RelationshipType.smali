.class public final enum Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
.super Ljava/lang/Enum;
.source "ROProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/ROProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RelationshipType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field public static final enum ALL:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field public static final enum GUEST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field public static final enum HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

.field public static final enum SELF:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 50
    new-instance v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    const-string/jumbo v1, "SELF"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->SELF:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 51
    new-instance v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    const-string/jumbo v1, "GUEST"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->GUEST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 52
    new-instance v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    const-string/jumbo v1, "HOST"

    invoke-direct {v0, v1, v4}, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 53
    new-instance v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    const-string/jumbo v1, "ALL"

    invoke-direct {v0, v1, v5}, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->ALL:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    .line 49
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    sget-object v1, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->SELF:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->GUEST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->HOST:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->ALL:Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->$VALUES:[Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

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
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    const-class v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;
    .registers 1

    .prologue
    .line 49
    sget-object v0, Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->$VALUES:[Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/ROProfileFragment$RelationshipType;

    return-object v0
.end method
