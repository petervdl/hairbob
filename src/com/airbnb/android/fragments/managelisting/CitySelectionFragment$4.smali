.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;


# direct methods
.method constructor <init>(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3
    .param p1, "arg0"    # Landroid/text/Editable;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->setStickyButtonEnabled()V
    invoke-static {v0}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$600(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    .line 170
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    .line 175
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9
    .param p1, "arg0"    # Ljava/lang/CharSequence;
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "arg3"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 179
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v1}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    .line 180
    .local v0, "lm":Landroid/support/v4/app/LoaderManager;
    invoke-virtual {v0, v2}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v1

    if-eqz v1, :cond_14

    .line 181
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 185
    :goto_13
    return-void

    .line 183
    :cond_14
    iget-object v1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$4;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    goto :goto_13
.end method
