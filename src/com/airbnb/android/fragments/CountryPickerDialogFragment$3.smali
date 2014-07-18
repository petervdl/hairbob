.class Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;
.super Ljava/lang/Object;
.source "CountryPickerDialogFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

.field final synthetic val$countryListView:Landroid/widget/ListView;

.field final synthetic val$selectedItem:I


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/CountryPickerDialogFragment;ILandroid/widget/ListView;)V
    .registers 4

    .prologue
    .line 141
    iput-object p1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->this$0:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    iput p2, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->val$selectedItem:I

    iput-object p3, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->val$countryListView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 144
    iget v0, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->val$selectedItem:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    .line 145
    iget-object v0, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->val$countryListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/airbnb/android/fragments/CountryPickerDialogFragment$3;->val$selectedItem:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 147
    :cond_c
    return-void
.end method
