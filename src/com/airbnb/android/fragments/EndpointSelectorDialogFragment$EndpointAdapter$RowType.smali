.class final enum Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;
.super Ljava/lang/Enum;
.source "EndpointSelectorDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "RowType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

.field public static final enum Custom:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

.field public static final enum Endpoint:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    const-string/jumbo v1, "Endpoint"

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Endpoint:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    .line 84
    new-instance v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    const-string/jumbo v1, "Custom"

    invoke-direct {v0, v1, v3}, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Custom:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    .line 82
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    sget-object v1, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Endpoint:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->Custom:Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->$VALUES:[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

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
    .line 82
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const-class v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    return-object v0
.end method

.method public static values()[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;
    .registers 1

    .prologue
    .line 82
    sget-object v0, Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->$VALUES:[Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    invoke-virtual {v0}, [Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/airbnb/android/fragments/EndpointSelectorDialogFragment$EndpointAdapter$RowType;

    return-object v0
.end method
