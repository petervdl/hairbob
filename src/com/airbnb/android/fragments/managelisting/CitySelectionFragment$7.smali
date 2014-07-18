.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 222
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 13
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 226
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 227
    .local v0, "c":Landroid/database/Cursor;
    invoke-interface {v0, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 228
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->HostOnboarding:Lcom/airbnb/android/utils/MixPanelHelper$MixNames;

    iget-object v5, v5, Lcom/airbnb/android/utils/MixPanelHelper$MixNames;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-string/jumbo v5, "lys"

    aput-object v5, v3, v4

    const/4 v4, 0x2

    const-string/jumbo v5, "location"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string/jumbo v5, "autocorrect_click"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    const-string/jumbo v5, "suggest_text_2"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Lcom/airbnb/android/services/AirEventLogger;->track([Ljava/lang/String;)V

    .line 231
    :try_start_51
    const-string/jumbo v3, "suggest_text_2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "geocodeable":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$7;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onDoneClick()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V
    :try_end_6a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_51 .. :try_end_6a} :catch_6b

    .line 237
    .end local v2    # "geocodeable":Ljava/lang/String;
    :goto_6a
    return-void

    .line 234
    :catch_6b
    move-exception v1

    .line 235
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6a
.end method
