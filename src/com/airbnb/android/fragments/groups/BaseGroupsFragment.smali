.class public abstract Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;
.super Lcom/airbnb/android/fragments/BaseDrawerFragment;
.source "BaseGroupsFragment.java"


# static fields
.field protected static final ARGS_GROUPS_URI:Ljava/lang/String; = "groups_uri"


# instance fields
.field protected mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/airbnb/android/fragments/BaseDrawerFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .registers 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 15
    invoke-super {p0, p1}, Lcom/airbnb/android/fragments/BaseDrawerFragment;->onAttach(Landroid/app/Activity;)V

    .line 17
    instance-of v0, p1, Lcom/airbnb/android/interfaces/GroupsCallbacks;

    if-nez v0, :cond_2f

    .line 18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " must implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lcom/airbnb/android/interfaces/GroupsCallbacks;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_2f
    check-cast p1, Lcom/airbnb/android/interfaces/GroupsCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/airbnb/android/fragments/groups/BaseGroupsFragment;->mCallbacks:Lcom/airbnb/android/interfaces/GroupsCallbacks;

    .line 21
    return-void
.end method
