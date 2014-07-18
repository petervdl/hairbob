.class public Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "HospitalityWebViewActivity.java"

# interfaces
.implements Lcom/newrelic/agent/android/api/v2/TraceFieldInterface;


# annotations
.annotation build Lcom/newrelic/agent/android/instrumentation/Instrumented;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/android/activities/HospitalityWebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChecklistDialogFragment"
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mChecklist:Landroid/widget/ListView;

.field private mChecklistContainer:Landroid/view/View;

.field private mChecklistModal:Landroid/app/Dialog;

.field private mChecklistTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 189
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Ljava/util/ArrayList;Ljava/lang/String;)Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;
    .registers 5
    .param p1, "title"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;"
        }
    .end annotation

    .prologue
    .line 197
    .local p0, "items":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;

    invoke-direct {v1}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;-><init>()V

    .line 198
    .local v1, "fragment":Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 199
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "items"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 200
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {v1, v0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 203
    return-object v1
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .registers 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 208
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistModal:Landroid/app/Dialog;

    if-nez v3, :cond_76

    .line 209
    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "items"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 210
    .local v1, "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    const-string/jumbo v4, "title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "title":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 213
    .local v0, "context":Landroid/content/Context;
    new-instance v3, Landroid/widget/ArrayAdapter;

    const v4, 0x7f030148

    const v5, 0x7f080377

    invoke-direct {v3, v0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    .line 216
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f03011d

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistContainer:Landroid/view/View;

    .line 218
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistContainer:Landroid/view/View;

    const v4, 0x7f080314

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklist:Landroid/widget/ListView;

    .line 219
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklist:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistContainer:Landroid/view/View;

    const v4, 0x7f080313

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistTitle:Landroid/widget/TextView;

    .line 222
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v4, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistContainer:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistModal:Landroid/app/Dialog;

    .line 228
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistModal:Landroid/app/Dialog;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 232
    .end local v0    # "context":Landroid/content/Context;
    .end local v1    # "items":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v2    # "title":Ljava/lang/String;
    :cond_76
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistModal:Landroid/app/Dialog;

    return-object v3
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 237
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 238
    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStart()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStarted()V

    return-void
.end method

.method protected onStop()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->getInstance()Lcom/newrelic/agent/android/background/ApplicationStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/newrelic/agent/android/background/ApplicationStateMonitor;->activityStopped()V

    return-void
.end method

.method public showChecklistDialog()V
    .registers 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistModal:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    return-void
.end method

.method protected updateChecklist(Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 7
    .param p2, "checklistTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "checklistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 246
    .local v2, "updatedChecklistItems":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->clear()V

    .line 248
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 249
    .local v1, "item":Ljava/lang/String;
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_e

    .line 251
    .end local v1    # "item":Ljava/lang/String;
    :cond_20
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 252
    iget-object v3, p0, Lcom/airbnb/android/activities/HospitalityWebViewActivity$ChecklistDialogFragment;->mChecklistTitle:Landroid/widget/TextView;

    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    return-void
.end method
