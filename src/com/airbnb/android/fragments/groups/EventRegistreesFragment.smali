.class public Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;
.super Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.source "EventRegistreesFragment.java"


# static fields
.field public static final ARGS_EVENT:Ljava/lang/String; = "event"

.field public static final ARGS_GROUP:Ljava/lang/String; = "group"


# instance fields
.field private mEvent:Lcom/airbnb/android/models/groups/Event;

.field private mGroup:Lcom/airbnb/android/models/groups/Group;

.field private mRegistrationAdapter:Lcom/airbnb/android/adapters/groups/RegistrationAdapter;

.field private mRegistrations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/airbnb/android/models/groups/Registration;",
            ">;"
        }
    .end annotation
.end field

.field private mRegistreesListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)Lcom/airbnb/android/models/groups/Group;
    .registers 2
    .param p0, "x0"    # Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    return-object v0
.end method

.method public static newInstance(Lcom/airbnb/android/models/groups/Group;Lcom/airbnb/android/models/groups/Event;)Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;
    .registers 5
    .param p0, "group"    # Lcom/airbnb/android/models/groups/Group;
    .param p1, "event"    # Lcom/airbnb/android/models/groups/Event;

    .prologue
    .line 35
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 36
    .local v0, "args":Landroid/os/Bundle;
    const-string/jumbo v2, "event"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    const-string/jumbo v2, "group"

    invoke-virtual {v0, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 39
    new-instance v1, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;

    invoke-direct {v1}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;-><init>()V

    .line 40
    .local v1, "fragment":Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;
    invoke-virtual {v1, v0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->setArguments(Landroid/os/Bundle;)V

    .line 42
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 47
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "event"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Event;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    .line 49
    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "group"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/airbnb/android/models/groups/Group;

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Lcom/airbnb/android/adapters/groups/RegistrationAdapter;

    invoke-virtual {p0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/airbnb/android/adapters/groups/RegistrationAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrationAdapter:Lcom/airbnb/android/adapters/groups/RegistrationAdapter;

    .line 52
    iget-object v0, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    const v1, 0x7f0e026c

    invoke-interface {v0, v1}, Lcom/airbnb/android/interfaces/GroupsCallbacks;->setActionBarTitle(I)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 7
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 57
    const v1, 0x7f03009a

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 58
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 59
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrations:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mEvent:Lcom/airbnb/android/models/groups/Event;

    invoke-virtual {v2}, Lcom/airbnb/android/models/groups/Event;->getRegistrations()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 60
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrationAdapter:Lcom/airbnb/android/adapters/groups/RegistrationAdapter;

    invoke-virtual {v1}, Lcom/airbnb/android/adapters/groups/RegistrationAdapter;->notifyDataSetChanged()V

    .line 62
    const v1, 0x7f0801b7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistreesListView:Landroid/widget/ListView;

    .line 63
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistreesListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistrationAdapter:Lcom/airbnb/android/adapters/groups/RegistrationAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 65
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mRegistreesListView:Landroid/widget/ListView;

    new-instance v2, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;

    invoke-direct {v2, p0}, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment$1;-><init>(Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 77
    iget-object v1, p0, Lcom/airbnb/android/fragments/groups/EventRegistreesFragment;->mGroup:Lcom/airbnb/android/models/groups/Group;

    invoke-static {v1}, Lcom/airbnb/android/analytics/GroupsAnalytics;->trackRSVPs(Lcom/airbnb/android/models/groups/Group;)V

    .line 78
    return-object v0
.end method
