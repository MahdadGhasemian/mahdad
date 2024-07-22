---
title: Restore Backup with Longhorn
tags: Kubernetes, K3S, Longhorn, Restore, Backup
date: 2024-07-22
description: Instructions for restoring data using Longhorn backup and restore features.
image: /blog/longhorn.png
author: Mahdad Ghasemian
draft: false
---

# Restore Backup with Longhorn

**Instructions for restoring data using Longhorn backup and restore features.**

## Restore Backup

### Example: Restoring PostgreSQL Data

1. **Scale Down the PostgreSQL StatefulSet:**

   ```bash
   kubectl scale statefulset.apps/postgresql --replicas=0 -n postgresql
   ```

2. **Wait for the Volume to Detach:**

   - Monitor the volume status until it is detached.

3. **Note the Current Volume Name:**

   - For example: `pvc-1be4dafb-399f-40d4-ac87-205eb56c2f44`.

4. **Delete the Old Volume via Longhorn GUI:**

   - Navigate to the Longhorn GUI and delete the specified volume.

5. **Restore the Backup to a New Volume:**

   - Use the Longhorn GUI to restore the backup to a new volume.
   - Assign the new volume the same name noted in step 3 (`pvc-1be4dafb-399f-40d4-ac87-205eb56c2f44`).

6. **Wait for the Restore Process to Complete:**

   - Monitor the Longhorn GUI until the restore process finishes.

7. **Create Persistent Volume (PV) / Persistent Volume Claim (PVC):**
   - Navigate to the lonhorn GUI > Volume > at the right side of volume named `pvc-1be4dafb-399f-40d4-ac87-205eb56c2f44` open operation button > select `Create PV/PVC`
   - Ensure the `Create PVC` option is checked.
   - Ensure the `Use Previous PVC` option is checked.

![longhorn-volume-create-pv-pvc-1](/blog/longhorn-volume-create-pv-pvc-1.png)

![longhorn-create-pv-pvc-2](/blog/longhorn-create-pv-pvc-2.png)

8. **Wait for the PV/PVC to be Available:**

   - Monitor the status until the PV/PVC is available and ready for use.

9. **Scale Up the PostgreSQL StatefulSet:**

   ```bash
   kubectl scale statefulset.apps/postgresql --replicas=1 -n postgresql
   ```

By following these steps, you can successfully restore your data using Longhorn.

[Github Gist](https://gist.github.com/MahdadGhasemian/0a0a88158d4c07f8082352aad488804e)
