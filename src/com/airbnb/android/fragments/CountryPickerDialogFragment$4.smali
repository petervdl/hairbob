.class Lcom/airbnb/android/fragments/CountryPickerDialogFragment$4;
.super Ljava/lang/Object;
.source "CountryPickerDialogFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->buildCountryList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/airbnb/android/models/NameCodeItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;)V
    .registers 2

    .prologue
    .line 189
    iput-object p1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$4;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/airbnb/android/models/NameCodeItem;Lcom/airbnb/android/models/NameCodeItem;)I
    .registers 5
    .param p1, "lhs"    # Lcom/airbnb/android/models/NameCodeItem;
    .param p2, "rhs"    # Lcom/airbnb/android/models/NameCodeItem;

    .prologue
    .line 192
    invoke-virtual {p1}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/airbnb/android/models/NameCodeItem;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 189
    check-cast p1, Lcom/airbnb/android/models/NameCodeItem;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lcom/airbnb/android/models/NameCodeItem;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$4;->compare(Lcom/airbnb/android/models/NameCodeItem;Lcom/airbnb/android/models/NameCodeItem;)I

    move-result v0

    return v0
.end method
