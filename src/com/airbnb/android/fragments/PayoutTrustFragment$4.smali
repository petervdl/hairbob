.class Lcom/airbnb/android/fragments/PayoutTrustFragment$4;
.super Ljava/lang/Object;
.source "PayoutTrustFragment.java"

# interfaces
.implements Lcom/airbnb/android/interfaces/NameCodePickerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/PayoutTrustFragment;->showSelectCountryDialog(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/PayoutTrustFragment;)V
    .registers 2

    .prologue
    .line 163
    iput-object p1, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectItem(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "code"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # getter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mCountryPickerDialog:Lcom/airbnb/android/fragments/CountryPickerDialogFragment;
    invoke-static {v0}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$400(Lcom/airbnb/android/fragments/PayoutTrustFragment;)Lcom/airbnb/android/fragments/CountryPickerDialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/android/fragments/CountryPickerDialogFragment;->dismiss()V

    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    iget-object v0, v0, Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountrySelector:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 169
    iget-object v0, p0, Lcom/airbnb/android/fragments/PayoutTrustFragment$4;->this$0:Lcom/airbnb/android/fragments/PayoutTrustFragment;

    # setter for: Lcom/airbnb/android/fragments/PayoutTrustFragment;->mPayoutCountryCode:Ljava/lang/String;
    invoke-static {v0, p2}, Lcom/airbnb/android/fragments/PayoutTrustFragment;->access$202(Lcom/airbnb/android/fragments/PayoutTrustFragment;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    return-void
.end method
