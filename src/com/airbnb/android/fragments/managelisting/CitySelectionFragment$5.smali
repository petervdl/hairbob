.class Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;
.super Ljava/lang/Object;
.source "CitySelectionFragment.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 190
    iput-object p1, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keycode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v5, 0x0

    .line 193
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_42

    const/16 v3, 0x42

    if-ne p2, v3, :cond_42

    .line 194
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mCursorAdapter:Landroid/support/v4/widget/SimpleCursorAdapter;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$500(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/support/v4/widget/SimpleCursorAdapter;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v4/widget/SimpleCursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, "c":Landroid/database/Cursor;
    if-eqz v0, :cond_34

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_34

    .line 196
    invoke-interface {v0, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 198
    :try_start_20
    const-string/jumbo v3, "suggest_text_2"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 199
    .local v2, "geocodeable":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_34
    .catch Ljava/lang/IllegalArgumentException; {:try_start_20 .. :try_end_34} :catch_43

    .line 205
    .end local v2    # "geocodeable":Ljava/lang/String;
    :cond_34
    :goto_34
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # invokes: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->onDoneClick()V
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$700(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)V

    .line 206
    iget-object v3, p0, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment$5;->this$0:Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;

    # getter for: Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->mEditText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v3}, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->access$300(Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;)Landroid/widget/AutoCompleteTextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 210
    .end local v0    # "c":Landroid/database/Cursor;
    :cond_42
    return v5

    .line 200
    .restart local v0    # "c":Landroid/database/Cursor;
    :catch_43
    move-exception v1

    .line 201
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/airbnb/android/fragments/managelisting/CitySelectionFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_34
.end method
