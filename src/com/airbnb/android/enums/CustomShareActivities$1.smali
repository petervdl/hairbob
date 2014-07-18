.class final Lcom/airbnb/android/enums/CustomShareActivities$1;
.super Ljava/lang/Object;
.source "CustomShareActivities.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/airbnb/android/enums/CustomShareActivities;->getComparator(Landroid/content/Context;)Ljava/util/Comparator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/airbnb/android/enums/CustomShareActivities$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .registers 9
    .param p1, "lhs"    # Landroid/content/pm/ResolveInfo;
    .param p2, "rhs"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 60
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/airbnb/android/enums/CustomShareActivities;->getEnum(Ljava/lang/String;)Lcom/airbnb/android/enums/CustomShareActivities;

    move-result-object v0

    .line 61
    .local v0, "leftCsa":Lcom/airbnb/android/enums/CustomShareActivities;
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Lcom/airbnb/android/enums/CustomShareActivities;->getEnum(Ljava/lang/String;)Lcom/airbnb/android/enums/CustomShareActivities;

    move-result-object v2

    .line 64
    .local v2, "rightCsa":Lcom/airbnb/android/enums/CustomShareActivities;
    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-eq v0, v4, :cond_22

    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-eq v2, v4, :cond_22

    .line 65
    invoke-virtual {v0}, Lcom/airbnb/android/enums/CustomShareActivities;->ordinal()I

    move-result v4

    invoke-virtual {v2}, Lcom/airbnb/android/enums/CustomShareActivities;->ordinal()I

    move-result v5

    sub-int/2addr v4, v5

    .line 73
    :goto_21
    return v4

    .line 66
    :cond_22
    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-eq v0, v4, :cond_2c

    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-ne v2, v4, :cond_2c

    .line 67
    const/4 v4, -0x1

    goto :goto_21

    .line 68
    :cond_2c
    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-ne v0, v4, :cond_36

    sget-object v4, Lcom/airbnb/android/enums/CustomShareActivities;->OTHER:Lcom/airbnb/android/enums/CustomShareActivities;

    if-eq v2, v4, :cond_36

    .line 69
    const/4 v4, 0x1

    goto :goto_21

    .line 71
    :cond_36
    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/airbnb/android/enums/CustomShareActivities$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "leftName":Ljava/lang/String;
    iget-object v4, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Lcom/airbnb/android/enums/CustomShareActivities$1;->val$context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 73
    .local v3, "rightName":Ljava/lang/String;
    invoke-virtual {v1, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    goto :goto_21
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 56
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/android/enums/CustomShareActivities$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
