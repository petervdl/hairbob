.class Lcom/airbnb/android/activities/MainActivity$6$1;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/airbnb/android/fragments/CurrencySelectorDialogFragment$OnCurrencySelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/activities/MainActivity$6;->onResponse(Lcom/airbnb/android/requests/CurrenciesRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/airbnb/android/activities/MainActivity$6;


# direct methods
.method constructor <init>(Lcom/airbnb/android/activities/MainActivity$6;)V
    .registers 2

    .prologue
    .line 834
    iput-object p1, p0, Lcom/airbnb/android/activities/MainActivity$6$1;->this$1:Lcom/airbnb/android/activities/MainActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCurrencySelected(Lcom/airbnb/android/models/Currency;)V
    .registers 5
    .param p1, "selected"    # Lcom/airbnb/android/models/Currency;

    .prologue
    const/4 v2, 0x1

    .line 837
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$6$1;->this$1:Lcom/airbnb/android/activities/MainActivity$6;

    iget-object v0, v0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    invoke-static {v0}, Lcom/airbnb/android/utils/CurrencyHelper;->getInstance(Landroid/content/Context;)Lcom/airbnb/android/utils/CurrencyHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/airbnb/android/models/Currency;->getCurrencyCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/airbnb/android/utils/CurrencyHelper;->setCurrency(Ljava/lang/String;ZZ)V

    .line 838
    iget-object v0, p0, Lcom/airbnb/android/activities/MainActivity$6$1;->this$1:Lcom/airbnb/android/activities/MainActivity$6;

    iget-object v0, v0, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    iget-object v1, p0, Lcom/airbnb/android/activities/MainActivity$6$1;->this$1:Lcom/airbnb/android/activities/MainActivity$6;

    iget-object v1, v1, Lcom/airbnb/android/activities/MainActivity$6;->this$0:Lcom/airbnb/android/activities/MainActivity;

    # getter for: Lcom/airbnb/android/activities/MainActivity;->mCurrentMenuItem:Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;
    invoke-static {v1}, Lcom/airbnb/android/activities/MainActivity;->access$700(Lcom/airbnb/android/activities/MainActivity;)Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;

    move-result-object v1

    # invokes: Lcom/airbnb/android/activities/MainActivity;->updateViews(Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V
    invoke-static {v0, v1, v2}, Lcom/airbnb/android/activities/MainActivity;->access$800(Lcom/airbnb/android/activities/MainActivity;Lcom/airbnb/android/adapters/SlidingMenuAdapter$SlidingMenuItem;Z)V

    .line 839
    return-void
.end method
